import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

public class PDEPrinter {

    public static void main( String[] args ) {

        String csvFile = "pokemon.csv";
	String moveset = "moveset.csv";
        BufferedReader br = null;
	BufferedReader mv = null;
        String line = "";
	String moveline = "";
        String cvsSplitBy = ",";

        try {

            br = new BufferedReader(new FileReader(csvFile));
	    mv = new BufferedReader(new FileReader(moveset));
            while ((line = br.readLine()) != null && (moveline = mv.readLine()) != null) {

                // use comma as separator
                String[] pokemon = line.split(cvsSplitBy);
		String[] movestats = moveline.split(cvsSplitBy);

		try{
		    PrintWriter writer = new PrintWriter(pokemon[1] + ".pde");
		    writer.println( "class " + pokemon[1] + " extends Pokemon {\n\n  "
				    + pokemon[1] + "(String newName, int newLvl) {\n\n    _name = newName;\n    _index = "
				    + pokemon[0] + ";\n    _lvl = newLvl;\n    _hp = "
				    + pokemon[2] + ";\n    _atk = "
				    + pokemon[3] + ";\n    _def = "
				    + pokemon[4] + ";\n    _spatk = "
				    + pokemon[5] + ";\n    _spdef = "
				    + pokemon[6] + ";\n    _speed = "
				    + pokemon[7] + ";\n    _type1 = "
				    + pokemon[8] + ";\n    _type2 = "
				    + pokemon[9] + ";\n    atk1 = new Move( \""
				    + movestats[2] + "\"," + movestats[3] + "," + movestats[4] + "," + movestats[5] + "," + movestats[6] + "," + movestats[7] + "," + movestats[8] + " );\n    atk2 = new Move( \""
				    + movestats[9] + "\"," + movestats[10] + "," + movestats[11] + "," + movestats[12] + "," + movestats[13] + "," + movestats[14] + "," + movestats[15] + " );\n    atk3 = new Move( \""
				    + movestats[16] + "\"," + movestats[17] + "," + movestats[18] + "," + movestats[19] + "," + movestats[20] + "," + movestats[21] + "," + movestats[22] + " );\n    atk4 = new Move( \""
				    + movestats[23] + "\"," + movestats[24] + "," + movestats[25] + "," + movestats[26] + "," + movestats[27] + "," + movestats[28] + "," + movestats[29] + " );\n    hasEvo = "
				    + pokemon[10].toLowerCase() + ";\n    evoLvl = "
				    + pokemon[11] + ";\n    evoTo = "
				    + pokemon[12] + ";\n  }\n\n}" );
		    writer.close();
		}
		catch (IOException e) {
		    // do something
		}

            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
	
    }
    
}
