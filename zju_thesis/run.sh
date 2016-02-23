xelatex main
mv GBT7714-2005AYLang-ZJU.bst GBT7714-2005AYLang-ZJU.bst8
mv ./reference_data_base/references.bib ./reference_data_base/references.bib8
mv main.aux main.aux8
iconv -f UTF-8 -t GBK < GBT7714-2005AYLang-ZJU.bst8 > GBT7714-2005AYLang-ZJU.bst
iconv -f UTF-8 -t GBK < ./reference_data_base/references.bib8 > ./reference_data_base/references.bib
iconv -f UTF-8 -t GBK < main.aux8 > main.aux
bibtex main
mv GBT7714-2005AYLang-ZJU.bst GBT7714-2005AYLang-ZJU.bstg
mv ./reference_data_base/references.bib ./reference_data_base/references.bibg
mv main.aux main.auxg
mv main.bbl main.bblg
iconv -f GBK -t UTF-8 < GBT7714-2005AYLang-ZJU.bstg > GBT7714-2005AYLang-ZJU.bst
iconv -f GBK -t UTF-8 < ./reference_data_base/references.bibg > ./reference_data_base/references.bib
iconv -f GBK -t UTF-8 < main.auxg > main.aux
iconv -f GBK -t UTF-8 < main.bblg > main.bbl
sed -i '' 's/\]\/\/\./\]\/\//g' main.bbl
xelatex main
xelatex main
rm GBT7714-2005AYLang-ZJU.bst?
rm ./reference_data_base/references.bib?
rm main.aux
rm main.aux?
rm main.bbl
rm main.bbl?
rm main.blg
rm main.log
