import random
import numpy as np
import matplotlib.pyplot as plt
import sys


# 生成迷宫
def generate_maze(maze_total_rows, maze_total_cols):
    # 用于保存每个单元格信息的数组 message_of_point。
    # 前四个坐标表示该单元格的四面是否有墙，
    # 第五个指示该单元格是否在搜索中已访问。
    # message_of_point(左，上，右，下，是否已访问)
    message_of_point = np.zeros((maze_total_rows, maze_total_cols, 5), dtype=np.uint8)

    # 设置起始行和列
    begin_row, begin_col = 0, 0
    history_found = [(begin_row, begin_col)]  # 历史记录是已访问位置的堆栈

    # 沿迷宫单元格中的路径跟踪并打开路径两侧的墙。
    # 通过 while 循环完成，直到没有历史记录为止，
    # 这意味着我们回溯到了初始起点。
    while history_found:
        # 从历史记录中随机选择一个候选单元格
        this_row, this_col = random.choice(history_found)
        history_found.remove((this_row, this_col))
        message_of_point[this_row, this_col, 4] = 1  # 标记此位置为已访问
        check = []

        # 如果随机选择的单元格具有与现有迷宫相连的多个边，
        # 那么检查这些边上是否有墙
        if this_col > 0 and message_of_point[this_row, this_col - 1, 4] == 1:
            check.append("L")
        elif this_col > 0 and message_of_point[this_row, this_col - 1, 4] == 0:
            history_found.append((this_row, this_col - 1))
            message_of_point[this_row, this_col - 1, 4] = 2

        if this_row > 0 and message_of_point[this_row - 1, this_col, 4] == 1:
            check.append("U")
        elif this_row > 0 and message_of_point[this_row - 1, this_col, 4] == 0:
            history_found.append((this_row - 1, this_col))
            message_of_point[this_row - 1, this_col, 4] = 2

        if (
            this_col < maze_total_cols - 1
            and message_of_point[this_row, this_col + 1, 4] == 1
        ):
            check.append("R")
        elif (
            this_col < maze_total_cols - 1
            and message_of_point[this_row, this_col + 1, 4] == 0
        ):
            history_found.append((this_row, this_col + 1))
            message_of_point[this_row, this_col + 1, 4] = 2

        if (
            this_row < maze_total_rows - 1
            and message_of_point[this_row + 1, this_col, 4] == 1
        ):
            check.append("D")
        elif (
            this_row < maze_total_rows - 1
            and message_of_point[this_row + 1, this_col, 4] == 0
        ):
            history_found.append((this_row + 1, this_col))
            message_of_point[this_row + 1, this_col, 4] = 2

        # 从中随机选择一个边
        if len(check):
            move_direction = random.choice(check)
            if move_direction == "L":
                message_of_point[this_row, this_col, 0] = 1
                this_col = this_col - 1
                message_of_point[this_row, this_col, 2] = 1
            elif move_direction == "U":
                message_of_point[this_row, this_col, 1] = 1
                this_row = this_row - 1
                message_of_point[this_row, this_col, 3] = 1
            elif move_direction == "R":
                message_of_point[this_row, this_col, 2] = 1
                this_col = this_col + 1
                message_of_point[this_row, this_col, 0] = 1
            elif move_direction == "D":
                message_of_point[this_row, this_col, 3] = 1
                this_row = this_row + 1
                message_of_point[this_row, this_col, 1] = 1

    # 在起点和终点打开墙
    message_of_point[0, 0, 0] = 1
    message_of_point[maze_total_rows - 1, maze_total_cols - 1, 2] = 1

    print(message_of_point)
    return message_of_point


# 绘制迷宫
def display_maze(maze):
    rows_num, cols_num, _ = maze.shape
    # 生成用于显示的图像
    image_output = np.zeros((rows_num * 10, cols_num * 10), dtype=np.uint8)

    for row_index in range(rows_num):
        for col_index in range(cols_num):
            # 将单元格内部（1-9，即外部留2格）填充为"11111111"
            for i in range(10 * row_index + 1, 10 * row_index + 9):
                for j in range(10 * col_index + 1, 10 * col_index + 9):
                    image_output[i, j] = 0b11111111

            cell_data = maze[row_index, col_index]
            # 左有墙
            if cell_data[0] == 1:
                image_output[
                    range(10 * row_index + 1, 10 * row_index + 9), 10 * col_index
                ] = 0b11111111
                image_output[
                    range(10 * row_index + 1, 10 * row_index + 9), 10 * col_index + 1
                ] = 0b11111111
            # 上有墙
            if cell_data[1] == 1:
                image_output[
                    10 * row_index, range(10 * col_index + 1, 10 * col_index + 9)
                ] = 0b11111111
                image_output[
                    10 * row_index + 1, range(10 * col_index + 1, 10 * col_index + 9)
                ] = 0b11111111
            # 右有墙
            if cell_data[2] == 1:
                image_output[
                    range(10 * row_index + 1, 10 * row_index + 9), 10 * col_index + 9
                ] = 0b11111111
                image_output[
                    range(10 * row_index + 1, 10 * row_index + 9), 10 * col_index + 8
                ] = 0b11111111
            # 下有墙
            if cell_data[3] == 1:
                image_output[
                    10 * row_index + 9, range(10 * col_index + 1, 10 * col_index + 9)
                ] = 0b11111111
                image_output[
                    10 * row_index + 8, range(10 * col_index + 1, 10 * col_index + 9)
                ] = 0b11111111

    # 把外墙加粗1像素
    image_output[1, :] = 0b00000000
    image_output[rows_num * 10 - 2, :] = 0b00000000
    image_output[:, 1] = 0b00000000
    image_output[:, cols_num * 10 - 2] = 0b00000000
    # 把出入口放开
    image_output[2:9, 1] = 0b11111111
    image_output[rows_num * 10 - 9 : rows_num * 10 - 2, cols_num * 10 - 2] = 0b11111111
    # 起点和终点
    image_output[4:7, 4:7] = 0b00000000
    image_output[
        rows_num * 10 - 7 : rows_num * 10 - 4, cols_num * 10 - 6 : cols_num * 10 - 3
    ] = 0b00000000

    # 显示图像
    return image_output


# 使用BFS算法寻找路径
def find_path(maze, start, end):
    rows, cols, _ = maze.shape
    message_of_point = np.zeros((rows, cols, 5), dtype=np.uint8)
    message_of_point[:, :, :4] = maze[:, :, :4]

    path = []
    previous_point = {}
    queue = [start]

    while queue:
        this_row, this_col = queue.pop(0)
        # 左
        if (
            this_col > 0
            and message_of_point[this_row, this_col - 1, 4] == 0
            and message_of_point[this_row, this_col, 0] == 1
        ):
            queue.append((this_row, this_col - 1))
            message_of_point[this_row, this_col, 4] = 1
            previous_point[(this_row, this_col - 1)] = (this_row, this_col)
        # 上
        if (
            this_row > 0
            and message_of_point[this_row - 1, this_col, 4] == 0
            and message_of_point[this_row, this_col, 1] == 1
        ):
            queue.append((this_row - 1, this_col))
            message_of_point[this_row, this_col, 4] = 1
            previous_point[(this_row - 1, this_col)] = (this_row, this_col)
        # 右
        if (
            this_col < cols - 1
            and message_of_point[this_row, this_col + 1, 4] == 0
            and message_of_point[this_row, this_col, 2] == 1
        ):
            queue.append((this_row, this_col + 1))
            message_of_point[this_row, this_col, 4] = 1
            previous_point[(this_row, this_col + 1)] = (this_row, this_col)
        # 下
        if (
            this_row < rows - 1
            and message_of_point[this_row + 1, this_col, 4] == 0
            and message_of_point[this_row, this_col, 3] == 1
        ):
            queue.append((this_row + 1, this_col))
            message_of_point[this_row, this_col, 4] = 1
            previous_point[(this_row + 1, this_col)] = (this_row, this_col)

        if (this_row, this_col) == end:
            while (this_row, this_col) != start:
                path.insert(0, (this_row, this_col))  # 插入到路径的开头
                this_row, this_col = previous_point[(this_row, this_col)]
            path.insert(0, start)
            break

    return path if path else None  # 如果找不到路径则返回 None


def display_maze_solve(maze, path=None):
    rows, cols, _ = maze.shape
    # 生成用于显示的图像
    image_output = display_maze(maze)

    if path is not None:
        for position in path:
            row, col = position
            for i in range(10 * row + 3, 10 * row + 7):
                for j in range(10 * col + 3, 10 * col + 7):
                    image_output[i, j] = 0b00000000

    return image_output

def help():
    print("Usage: python3 maze.py <num_rows> <num_cols>")
    print("       <num_rows> and <num_cols> must be positive integers,")
    print("       and <num_rows> * <num_cols> must be greater than 1.")
    print("       If no arguments are provided, the default maze size is 10x10.")

def main():

    if(len(sys.argv) != 3 and len(sys.argv) != 1):
        print("Error: The number of arguments must be 2 or 0")
        help()
        return

    if(len(sys.argv) == 1):
        num_rows = 10
        num_cols = 10
    else:
        if(not sys.argv[1].isdigit() or not sys.argv[2].isdigit()):
            print("Error: Type of arguments <row> <col> must be integer")
            help()
            return
        num_rows = int(sys.argv[1])
        num_cols = int(sys.argv[2])
        if(num_rows <= 1 or num_cols <= 1):
            print("Error: Invalid maze dimensions")
            print("Your input is: ", num_rows, num_cols)
            help()
            return
        


    maze = generate_maze(num_rows, num_cols)
    image_output = display_maze(maze)
    plt.subplot(1, 2, 1)
    plt.axis("off")
    plt.title("Maze")
    plt.imshow(image_output, cmap="hot", interpolation="none")
    #plt.show()

    start = (0, 0)
    end = (num_rows - 1, num_cols - 1)

    path = find_path(maze, start, end)
    if path is None:
        print("未找到路径")
    else:
        print(path)
        image_output_with_path = display_maze_solve(maze, path)
        plt.subplot(1, 2, 2)
        plt.axis("off")
        plt.title("Maze-Solve")
        plt.imshow(image_output_with_path, cmap="hot", interpolation="none")
        plt.suptitle("Maze-problem")
        plt.show()


if __name__ == "__main__":
    main()

