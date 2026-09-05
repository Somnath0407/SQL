class Solution {
    public boolean isValid(String s) {
        Deque<Character> stack = new ArrayDeque<>();
        for (int i = 0; i < s.length(); i++) {
            char ch = s.charAt(i);
            if (ch == '(' || ch == '{' || ch == '[') {
                stack.push(ch);
            }
            else if (ch == ')' || ch == '}' || ch == ']') {
                if (stack.isEmpty()) {
                    return false;
                }
                if ((ch == ')' && stack.peek() == '(') ||
                    (ch == '}' && stack.peek() == '{') ||
                    (ch == ']' && stack.peek() == '[')) {
                    stack.pop();
                }
                else {
                    return false;   // ← IMPORTANT
                }
            }
        }

        if (stack.isEmpty()) {
            return true;
        } else {
            return false;
        }
    }
}