# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview
RooFlow is a VS Code extension for AI-assisted development with persistent project context and optimized mode interactions.

## Commands
- No specific build/test/lint commands exist as this is primarily a configuration repository
- Run `./config/insert-variables.sh` (Linux/Mac) or `config\insert-variables.cmd` (Windows) to set up environment variables

## Code Style Guidelines
- YAML: Use 2-space indentation and follow YAML best practices
- Markdown: Used for Memory Bank files, follow standard formatting practices
- Instructions: Write clear, concise, and unambiguous instructions with appropriate comments
- Branch naming: `feature/name` or `bugfix/issue-123`
- Commit messages: Focus on problems solved or features added

## Testing Guidelines
- Test with/without existing Memory Bank
- Test "Update Memory Bank" (UMB) command
- Test mode switching
- Test error handling

## Project Structure
- Configuration files in `config/` directory
- Default mode configurations in `config/default-mode/`
- Mode-specific system prompts in hidden `.roo/` directory