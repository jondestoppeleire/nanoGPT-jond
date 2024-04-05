# #!/usr/bin/env bash
MODEL=out-gabe-char
SAMPLES=1
TOKENS=100

if [ "$#" -eq 0 ]; then
  echo "You need to supply a prompt."
  exit 1
fi

QUESTION="$*"

python sample.py --out_dir=$MODEL --start="$QUESTION" --num_samples=$SAMPLES --max_new_tokens=$TOKENS --seed=$RANDOM --device=cpu

