# deep-learning

Personal coursework repo for my M.Tech **Deep Learning** course (Shiv Nadar
University Chennai, July–Nov 2026 semester). Every lab assignment — math,
MATLAB, and any Python — gets done and tracked here.

## Structure

- `docs/assignments/` — assignment PDFs as handed out.
- `assignment<N>/` — my solution for lab assignment N (`.m` files, notes,
  plots). Own work, written to actually learn the material, not copied from
  classmates even when I have their finished version for reference.
- `main.py` / `pyproject.toml` — placeholder for any Python-side work; not
  in use yet.

## How I want help in this repo

- I'm a beginner — explain concepts step by step, in plain words, not a
  wall of jargon.
- Default to teaching, not solving for me — walk me through the reasoning
  unless I say I already know the concept and just want to see the code
  (e.g. MATLAB syntax, since that part's new to me).
- Keep explanations short and to the point. No padding.
- Flag anything that smells like just copying a solution instead of
  understanding it — that defeats the point of the course.

## Code style

- Keep it simple, like a matplotlib script — minimal comments, only where
  something's genuinely non-obvious.
- Don't repeat the same boilerplate command block over and over (e.g. one
  `figure`/setup block reused per plot); consolidate instead (e.g.
  `subplot` for multiple related plots in one figure).

## Status

- Assignment 1 (vectors, activation functions, backprop-by-hand,
  normalization) — in progress, MATLAB Online.
