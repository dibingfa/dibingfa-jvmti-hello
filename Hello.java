class Hello {
    public static void main(String[] args) throws Exception {
        while(true) {
            say();
            Thread.sleep(1000L);
        }
    }
    public static void say() {
        System.out.print("HELLO");
    }
}
