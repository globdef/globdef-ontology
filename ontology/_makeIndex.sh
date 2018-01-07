#!/bin/sh

# This script is adopted with gratitude from https://little418.com/2015/04/directory-listings-on-github-pages.html

ls | egrep '(owl)' | \
perl -e 'print "<html><body><ul>"; while(<>) { chop $_; print "<li><a href=\"./$_\">$_</a></li>";} print "</ul></body></html>"' > index.html