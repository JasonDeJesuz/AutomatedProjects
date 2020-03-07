import sys
import os
from github import Github

path = "path/to/directory"

username = "username"
password = "password"

def create():
    folderName = str(sys.argv[1])
    os.makedirs(path + folderName)
    g = Github(username, password)  # safer alternative, if you have an access token
    u = g.get_user()
    repo = u.create_repo(folderName)

if __name__ == "__main__":
    create()