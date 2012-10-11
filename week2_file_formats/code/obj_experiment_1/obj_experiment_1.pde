PrintWriter output;
String[] allData;

void setup() {
  output = createWriter("Escalator_exp1_output.txt");
  allData = loadStrings( "Escalator_exp1.obj" );
  //println( allData );

  for ( int i = 0; i < allData.length; i++ ) {
    //    println(allData[i]);

//    if ( allData[i].contains( "v" )  ) {
      if ( i > 59 && i < 15877 ) {
      println(allData[i]);
      String[] thisRow = split( allData[i], ' ');
      if ( thisRow.length > 3 ) {
        float yValue = float(thisRow[2])*0.05;
        String newString = join(thisRow, " ");
        output.println(newString);
      }
    } 
    output.println(allData[i]);
  }
  output.flush();
  output.close();
  println("DONE AND DONE");
  exit();
}

