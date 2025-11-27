import subprocess
import json
import sys

file = sys.argv[1]


def get_cur_workspace():
    out = subprocess.check_output(["i3-msg", "-t", "get_workspaces"])
    for ws in json.loads(out):
        if ws["focused"]:
            return ws["name"]
    return None


cur_dir = int(get_cur_workspace())
pdf_path = '~/Downloads/snippets.pdf'
subprocess.run(["i3-msg", f'workspace {cur_dir+1}; exec zathura "{pdf_path}"'])
subprocess.run(["i3-msg", f'workspace {cur_dir}'])
subprocess.Popen(
    ["i3-msg", f'exec ~/.config/i3/scripts/i3_term -e nvim /home/jachym/mff/notes/{file}.tex'])
