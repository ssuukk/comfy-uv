export CC=gcc
export CXX=g++
mv pyproject.toml pyproject.toml_uv
cp pyproject.toml_uv pyproject.toml_backup
git pull
cp pyproject.toml_uv pyproject.toml

uv lock --upgrade --no-build-isolation
uv sync --no-build-isolation
#GIT_TERMINAL_PROMPT=0 find custom_nodes -type d -name ".git" -execdir sh -c 'echo "Updating plugin: $(pwd)"; git pull' \;
#find custom_nodes -type d -name ".git" -execdir sh -c 'echo "Updating plugin: $(pwd)"; git pull >/dev/null 2>&1 || echo "Skipping (auth required or error)"' \;
GIT_TERMINAL_PROMPT=0 find custom_nodes -type d -name ".git" -execdir sh -c 'echo "Updating plugin: $(pwd)"; git pull >/dev/null 2>&1 || echo "Skipping (auth required or error)"' \;
