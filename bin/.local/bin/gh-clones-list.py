#!/usr/bin/env python

import os

GH_PATH = "/home/abautista/src/github.com"

for gh_organization in os.listdir(GH_PATH):
    for repo in os.listdir(os.path.join(GH_PATH, gh_organization)):
        print(gh_organization + "/" + repo)
