import requests
import os


def get_user_repos(username, token):
    url = f"https://api.github.com/users/{username}/repos"
    headers = {"Authorization": f"token {token}"}
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        repos_json = response.json()
        repos_res = [
            {"repo_url": repo["html_url"], "repo_name": repo["name"]}
            for repo in repos_json
        ]
        return repos_res
    else:
        print("Error:", response.status_code)
        return None


def change_git_email(username, email, repo_url, repo_name):
    git_filter_sh = f"""
      git filter-branch -f --env-filter '
      if [ "$GIT_COMMITTER_EMAIL" != "{email}" ]; then
          GIT_AUTHOR_NAME="{username}"
          GIT_AUTHOR_EMAIL="{email}"
          GIT_COMMITTER_NAME="{username}"
          GIT_COMMITTER_EMAIL="{email}"
      fi
      if [ "$GIT_COMMITTER_EMAIL" != "{email}" ]; then
          GIT_AUTHOR_NAME="{username}"
          GIT_AUTHOR_EMAIL="{email}"
          GIT_COMMITTER_NAME="{username}"
          GIT_COMMITTER_EMAIL="{email}"
      fi
      ' --tag-name-filter cat -- --branches --tags && git push origin --force --all
    """
    os.system(f"git clone {repo_url} && cd {repo_name} && {git_filter_sh}")
    os.system(f"rm -rf {repo_name}")


if __name__ == "__main__":
    email = "i@littlecontrol.cc"
    username = "LittleControl"
    token = "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"
    repos = get_user_repos(username, token)
    if repos:
        for repo in repos:
            change_git_email(username, email, repo["repo_url"], repo["repo_name"])
