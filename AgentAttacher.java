import com.sun.tools.attach.VirtualMachine;

public class AgentAttacher {

    public static void main(String[] args) throws Exception {
        String pid = args[0];
        String agentPath = args[1];
        VirtualMachine virtualMachine = VirtualMachine.attach(pid);
        virtualMachine.loadAgentPath(agentPath);
    }

}
