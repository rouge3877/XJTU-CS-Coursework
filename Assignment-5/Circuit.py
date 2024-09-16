def backtrack(P, used, current_max, best_max):
    n = len(P)
    if len(P) == n:
        # 所有电路板都排列完毕
        best_max = min(best_max, current_max)
        return best_max
    
    for i in range(1, n + 1):
        if not used[i]:
            # 尝试添加电路板i
            P.append(i)
            used[i] = True
            
            # 更新连接块的最大长度
            local_max = 0
            for block in connection_blocks:
                min_pos = min(P.index(x) for x in block if x in P)
                max_pos = max(P.index(x) for x in block if x in P)
                local_max = max(local_max, max_pos - min_pos + 1)
            
            if local_max < best_max:
                # 仅当当前的最大长度小于已找到的最佳最大长度时继续
                best_max = backtrack(P, used, max(current_max, local_max), best_max)
            
            # 回溯
            used[i] = False
            P.pop()
    
    return best_max

# 初始化
n = len(boards)
P = []
used = [False] * (n + 1)
best_max = float('inf')

# 运行回溯算法
best_max = backtrack([], used, 0, best_max)