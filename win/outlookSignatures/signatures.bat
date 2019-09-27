@echo off

set signaturesPath="\\pathToSignaturesDirectory\%USERNAME%"
set outlookSignaturesPath="%APPDATA%\Microsoft\Signatures"
set archivePath="%APPDATA%\Microsoft\Archive"

if exist "%signaturesPath%" (goto sign) else (goto noSign)
	:sign
		echo Signature for user: %USERNAME%
		if exist "%outlookSignaturesPath%" (goto signatures) else (goto noSignatures)
			:signatures
				echo Signatures directory: OK
				if exist "%archivePath%" (goto archive) else (goto noArchive)
					:archive
						echo Archive directory: OK
						goto doCopy
					:noArchive
						echo No Archive directory. Creating...
						mkdir "%archivePath%"
						goto doCopy
			:noSignatures
				echo No Signatures directory. Ending...
				goto end
	:noSign
		echo No signature found for user: %USERNAME%. Ending...
		goto end
:doCopy
	echo Moving old Signatures to Archive...
	robocopy /S /MOVE /NFL /NDL /NJH /NJS /NC /NS /NP "%outlookSignaturesPath%" "%archivePath%"
	echo Moving signature to Signatures...
	robocopy /S /NFL /NDL /NJH /NJS /NC /NS /NP "%signaturesPath%" "%outlookSignaturesPath%"
	goto end
:end
	echo Finished.
	pause >nul
	