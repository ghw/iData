#!/usr/bin/env python

import os
import urlparse
import shutil
import subprocess

GITHUB='https://github.com'
DSTDIR='/home/ghw/wwwroot'

REPOS = [
    {
        'repo' : 'gehaowu/gehaowu.github.io',
        'branch' : 'master',
        'dir' : 'www.gehaowu.com',
    },
    {
        'repo' : 'gehaowu/zh-Hans',
        'branch' : 'gh-pages',
        'dir' : 'www.gehaowu.com/zh-Hans',
    },
    {
        'repo' : 'gehaowu/notes',
        'branch' : 'gh-pages',
        'dir' : 'www.gehaowu.com/notes',
    },
    {
        'repo' : 'gehaowu/albums',
        'branch' : 'gh-pages',
        'dir' : 'www.gehaowu.com/albums',
    },
    {
        'repo' : 'gehaowu/resume',
        'branch' : 'gh-pages',
        'dir' : 'www.gehaowu.com/resume',
    },
    {
        'repo' : 'gehaowu/data',
        'branch' : 'gh-pages',
        'dir': 'www.gehaowu.com/data',
    },
    {
        'repo' : 'gehaowu/Resources',
        'branch' : 'gh-pages',
        'dir' : 'www.gehaowu.com/Resources',
    },
]

if __name__ == "__main__":
    for repo in REPOS:
        print(repo['repo'])
        wrkdir = os.path.join(DSTDIR, repo['dir'])

        if os.path.exists(wrkdir) and not subprocess.call(['git', 'pull'], cwd=wrkdir):
            continue

        shutil.rmtree(wrkdir, ignore_errors=True)
        cmd = ['git', 'clone', '--depth', '1', '-b', repo['branch'], 
               urlparse.urljoin(GITHUB, repo['repo']), wrkdir]
        subprocess.call(cmd)
