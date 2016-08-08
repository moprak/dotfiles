if [ -z $LD_LIBRARY_PATH ]; then
    LD_LIBRARY_PATH=/usr/local/lib
else
    LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

