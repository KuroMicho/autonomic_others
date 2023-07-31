public class Solution {
    public int RemoveDuplicates(int[] nums) {
        // Create a HashSet to store unique elements
        HashSet<int> set = new HashSet<int>();
 
        // Iterate over the array
        foreach (int num in nums) {
            // Add the current element to the set
            set.Add(num);
        }
 
        // Copy the unique elements back to the original array
        int index = 0;
        foreach (int num in set) {
            nums[index++] = num;
        }
 
        // Return the number of unique elements
        return set.Count;
    }
}