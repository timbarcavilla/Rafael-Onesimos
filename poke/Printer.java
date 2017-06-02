import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

public class Printer {

    public static void main( String[] args ) {

        String csvFile = "pokemon.csv";
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ",";

        try {

            br = new BufferedReader(new FileReader(csvFile));
            while ((line = br.readLine()) != null) {

                // use comma as separator
                String[] pokemon = line.split(cvsSplitBy);

		try{
		    PrintWriter writer = new PrintWriter(pokemon[1] + ".java");
		    writer.println( "class " + pokemon[1] + " extends Pokemon {\n\n    " + pokemon[1] + "(String newName, int newLvl) {\n\n        _name = newName;\n        _index = " + pokemon[0] + ";\n        _lvl = newLvl;\n        // _moveset = [INSERT MOVESET HERE];\n        _hp = " + pokemon[2] + ";\n        _atk = " + pokemon[3] + ";\n        _def = " + pokemon[4] + ";\n        _spatk = " + pokemon[5] + ";\n        _spdef = " + pokemon[6] + ";\n        _speed = " + pokemon[7] + ";\n        _type1 = " + pokemon[8] + ";\n        _type2 = " + pokemon[9] + ";\n        atk1 = new Move(  );\n        atk2 = new Move(  );\n        atk3 = new Move(  );\n        atk4 = null;\n        hasEvo = " + pokemon[10] + ";\n        evoLvl = " + pokemon[11] + ";\n        evoTo = " + pokemon[12] + ";\n    }\n\n}" );
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
