package fnplot.syntax;

import fnplot.semantics.Visitor;
import fnplot.sys.FnPlotException;
import java.util.ArrayList;

/**
 *
 * @author newts
 */
public class ExpFunctionCall  extends Exp {
    
    ArrayList<Exp> args;
    String name;
    

    public ExpFunctionCall() {
        super();
    }

    public ExpFunctionCall(String name, ArrayList<Exp> args) {
        this.args = args;
        this.name = name;
    }

    public ArrayList<Exp> getArguments() {
        return args;
    }    

    public String getName() {
        return name;
    }
    
    @Override
    public <S, T> T visit(Visitor<S, T> v, S state) throws FnPlotException {
        return v.visitFnCall(this, state);
    }

    @Override
    public String toString() {
        StringBuilder argStr = new StringBuilder("");
        int n = args.size();
        if (n > 0) {
            argStr.append(args.get(0));
            for(int i = 1; i < n; i++) {
                argStr.append(", ");
                argStr.append(args.get(i));
            }
        }
        return String.format("%s(%s)", name, argStr.toString());
    }

}
