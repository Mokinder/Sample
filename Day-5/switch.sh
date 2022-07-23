#!/bin/bash -x

fruit=mango

case $fruit in
               "apple")
                  echo "Apple is juicy"
               ;;
               "mango")
                  echo "mango season is over"
               ;;
               "kiwi")
                  echo "kiwi is sour "
               ;;
               *)
                  echo "no match"
esac
