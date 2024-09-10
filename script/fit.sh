dataset="instant_avatar_wild"
profile="neuman"
logbase=${profile}

# 定义viz变量，你可以将它设置为"on"或"off"
viz="on" # 或者 "off"

for seq in "test9"; do
    if [ "$viz" = "on" ]; then
        # 如果viz是"on"，执行可视化命令
        python solver.py --profile ./profiles/insav_wild/${profile}.yaml --dataset $dataset --seq $seq --viz_only --log_dir logs/${logbase}/seq=${seq}_prof=${profile}_data=${dataset}
    else
        # 如果viz是"off"，执行不可视化的命令
        python solver.py --profile ./profiles/insav_wild/${profile}.yaml --dataset $dataset --seq $seq --logbase $logbase --fast --no_eval
    fi
done