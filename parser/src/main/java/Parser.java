import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.omg.sysml.interactive.SysMLInteractive;
import org.omg.sysml.interactive.SysMLInteractiveResult;
import org.omg.sysml.interactive.VizResult;
// import org.omg.sysml.interactive.Resource;

import java.util.Collections;
// import java.util.List;

public class Parser {
    public static void main(String[] args) {
        System.out.println("Hello, World! \n");

        SysMLInteractive sysml = SysMLInteractive.getInstance();
        SysMLInteractiveResult result = sysml.process(
            "package myRoot { " +
            "}", true);

        System.out.println("syntax: " + result.getSyntaxErrors());
        System.out.println("semantic: " + result.getSemanticErrors());
        System.out.println("exception: " + result.getException());
        System.out.println("format root element: " + result.formatRootElement());
        System.out.println("qualified name: " + result.getRootElement().getName());
        System.out.println("has error: " + result.hasErrors());

        System.out.println("resources: " + sysml.getInputResources().getFirst().getURI());
        VizResult viz_result = sysml.viz(Collections.singletonList("myRoot"), Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
        System.out.println("viz_result: " + viz_result);
    }
}
