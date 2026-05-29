#!/bin/bash


echo "DFU mode..."
sudo /usr/local/bin/macvdmtool dfu

echo ""
echo "Waiting 5 seconds"
for i in 5 4 3 2 1; do
    echo "   $i..."
    sleep 1
done
echo ""

echo "Restore..."
/usr/local/bin/cfgutil restore 

echo ""
echo "Done."
