#!/bin/bash

# 终止执行遇到错误的命令
set -e

echo "🟢 添加更改..."
git add .

echo "🟡 提交更改..."
git commit -m "npm publish"

echo "🟠 升级版本号（patch）..."
npm version patch

# npm version patch: Increments the patch version, creates a Git tag, and commits.
# npm version minor: Increments the minor version.
# npm version major: Increments the major version.

echo "🔵 推送到 GitHub..."
git push

echo "✅ 已完成推送，GitHub Action 将被触发"
