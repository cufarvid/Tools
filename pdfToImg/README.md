
# pdfToImg

Convert `.pdf` files to images.

####  Requirements
- [ImageMagick](https://github.com/ImageMagick/ImageMagick) installed
- execution of PowerShell scripts enabled

## Usage

Move `PdfToImg.ps1` to a directory with `.pdf` file/s you want to convert. Run `PdfToImg.ps1`. It will create a new directory for each converted file containing converted pages as images.

Set `imgFormat` to format you want to convert to. Play with `-density` & `-quality` options to achieve wanted results or check [ImageMagick Documentation](https://imagemagick.org/script/command-line-processing.php) for more information.
