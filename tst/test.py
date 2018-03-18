import os
import subprocess
version_script_path = os.getcwd() + "/version.sh"
vsn=subprocess.Popen(version_script_path, stdout=subprocess.PIPE, shell=True).communicate()
