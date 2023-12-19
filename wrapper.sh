mkdir tmp
cd tmp
cp ../$1_slc7_amd64_gcc700_CMSSW_10_6_19_tarball.tar.xz ./
tar -avxf $1_slc7_amd64_gcc700_CMSSW_10_6_19_tarball.tar.xz
date
echo $1
echo this is the $2-th job
./runcmsgrid.sh 1000 $2 4
date
mv *lhe .. && echo 'Generate events successfully!'
cd ..
rm -rf tmp
