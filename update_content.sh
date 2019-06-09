#!/bin/bash

echo "---
layout: default
---
" > ./pages/linux/linux_command.md
curl https://raw.githubusercontent.com/adikabintang/kuliah/master/misc_notes/linux/linux_command.md >> ./pages/linux/lix_command.md


echo "---
layout: default
---
" > ./pages/linux/linux_io.md
curl https://raw.githubusercontent.com/adikabintang/kuliah/master/misc_notes/linux/linux_io_notes.md >> ./pages/linux/linux_io.md