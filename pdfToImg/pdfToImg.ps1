$items = Get-ChildItem -LiteralPath "." | Where-Object {$_.Extension -eq ".pdf"}
$imgFormat = "jpg"

foreach ($item in $items)
{
    New-Item -Path "." -Name $item.BaseName -ItemType "directory"
    $outputFile = $item.BaseName + "\img-%d.$imgFormat"

    & magick convert -density 150 $item.Name -quality 100 $outputFile
}
