#!/bin/sh

sensors | grep "Tdie" | tr -d '+' | awk '{print $2}' 
