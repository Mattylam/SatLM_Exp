NUM_DEV=${ND:-"-1"}

ARG_N_EVAL=${N_EVAL:-"-1"}

EVAL=${1:-"test"}

main_exp()
{
    # OPENAI_API_KEY=${KEY} python run_manual.py --task proofd5 --num_dev ${NUM_DEV} --run_pred --manual_prompt_id cot --eval_split ${EVAL} --batch_size 5 --style_template cot ${FLAG}
    OPENAI_API_KEY=${KEY} python run_manual.py --task proofd5 --num_dev ${NUM_DEV} --run_pred --manual_prompt_id proglm --eval_split ${EVAL} --batch_size 5 --style_template proglm ${FLAG}
    OPENAI_API_KEY=${KEY} python run_manual.py --task proofd5 --num_dev ${NUM_DEV} --run_pred --manual_prompt_id satlm --eval_split ${EVAL} --batch_size 5 --style_template satlm ${FLAG}

}

main_exp
