from os import path
from git import Repo
import shutil

assets_dir = path.dirname(path.dirname(path.realpath(__file__))) + "/assets"


def copy(assets_src: str, dest: str):
    src = assets_dir + "/" + assets_src
    dest = path.expanduser(dest)

    if path.isdir(src):
        try:
            shutil.copytree(src, dest, dirs_exist_ok=True)
        except PermissionError:
            pass
    else:
        shutil.copy(src, dest)


def clone_repo(repo_url: str, dest: str):
    if not path.exists(dest):
        Repo.clone_from(repo_url, dest)
