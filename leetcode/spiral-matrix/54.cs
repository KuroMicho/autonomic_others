public IList<int> SpiralOrder(int[][] matrix) {
    IList<int> result = new List<int>();
    if (matrix == null || matrix.Length == 0)
        return result;
 
    int rowBegin = 0;
    int rowEnd = matrix.Length - 1;
    int colBegin = 0;
    int colEnd = matrix[0].Length - 1;
 
    while (rowBegin <= rowEnd && colBegin <= colEnd) {
        // Traverse right
        for (int i = colBegin; i <= colEnd; i++)
            result.Add(matrix[rowBegin][i]);
        rowBegin++;
 
        // Traverse down
        for (int i = rowBegin; i <= rowEnd; i++)
            result.Add(matrix[i][colEnd]);
        colEnd--;
 
        // Traverse left
        if (rowBegin <= rowEnd) {
            for (int i = colEnd; i >= colBegin; i--)
                result.Add(matrix[rowEnd][i]);
            rowEnd--;
        }
 
        // Traverse up
        if (colBegin <= colEnd) {
            for (int i = rowEnd; i >= rowBegin; i--)
                result.Add(matrix[i][colBegin]);
            colBegin++;
        }
    }
 
    return result;
}