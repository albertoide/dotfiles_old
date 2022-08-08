#!/usr/bin/env python

import os
import subprocess
import sys

DESTINATION_DIR = "/home/abautista/src"

f = open(sys.argv[1])
repos = f.readlines()

for repo in repos:
    repo = repo.strip()
    org, name = repo.split("/")
    target_dir = os.path.join(DESTINATION_DIR, org)
    if not os.path.isdir(target_dir):
        os.makedirs(target_dir)
    subprocess.run(["git", "clone", "https://github.com/" + repo, target_dir + "/" + name])

f.close()
