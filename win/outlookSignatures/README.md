
# outlookSignatures

Tool for easier Outlook email signatures management. Copy signatures from server/network drive to Outlook signatures directory in one click.

## Config

Set `\\pathToSignaturesDirectory` in `signaturesPath` to a directory containing user signatures. It should contain a separate directory for each user with it's Active Directory username as directory name.

`outlookSignaturesPath` is a directory where Outlook email signatures are located.

`archivePath` is a backup directory, old signatures from `outlookSignaturesPath` will be moved here.

## Usage

Run `signatures.bat`.
