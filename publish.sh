#!/bin/bash
set -e

echo "🟢 添加更改..."
git add .

echo "🟡 提交更改..."
git commit -m "npm publish" || echo "⚠️ 没有更改可提交"

echo "🟠 升级版本号（patch）..."
npm version patch

echo "🔵 推送到 GitHub..."
git push origin HEAD:main --force-with-lease

echo "✅ 已完成推送，GitHub Action 将被触发"

read -p "按任意键退出..."

