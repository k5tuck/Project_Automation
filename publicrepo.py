from github import Github
import sys

username = 'username'
password = 'password'
g = Github(username, password)

repo_name = sys.argv[1]
user = g.get_user()
create_repo = user.create_repo(repo_name)