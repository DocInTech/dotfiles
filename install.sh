#!/bin/bash
set -e

echo "🔧 Starting dotfiles install..."

# --- Node.js (required for Claude Code) ---
echo "📦 Installing Node.js..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs

# --- Claude Code ---
echo "🤖 Installing Claude Code..."
npm install -g @anthropic-ai/claude-code

# --- Create Claude skills directory ---
mkdir -p ~/.claude/skills

# --- Garry Tan's gstack ---
echo "📥 Cloning gstack..."
git clone https://github.com/garrytan/gstack.git ~/.claude/skills/gstack

# --- Hamel Husain's evals-skills ---
echo "📥 Cloning evals-skills..."
git clone https://github.com/hamelsmu/evals-skills.git ~/.claude/skills/evals-skills

echo "✅ Dotfiles install complete!"