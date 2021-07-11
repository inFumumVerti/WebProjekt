package beans;



public class AlteEinkaufsliste {
	//hier wird bei jetzt erstellte Einkaufsliste gespeichert
	
	

	

	
	private String[] alteIngr;
	private String[] alteMenge;
	private String[] alteEinheit;
	private String[] result;
	private String[] newIngr;
	private String[] newMenge;
	private String[] newEinheit;
	private int test;
	
	public AlteEinkaufsliste() {
		
		
		alteIngr = new String[0];
		alteMenge = new String[0];
		result = new String[0];
		alteEinheit = new String[0];
		newIngr = new String[0];
		newMenge = new String[0];
		newEinheit = new String[0];
		test=0;
	
		
		
	}
	public void setNewMenge(String[] men) {this.newMenge=men;}
	public void setNewIngr(String[] ing) {this.newIngr=ing;}
	public void setNewEinheit(String[] einheit) {this.newEinheit=einheit;}

	public String[] getResult() {
		
		
		
		if(alteIngr.length<1) {
		
			this.alteIngr=this.newIngr;
			this.alteMenge=this.newMenge;
			this.alteEinheit=this.newEinheit;
		}else {
				for(int i=0;i<this.newIngr.length;i++) {
						boolean exist=false;	// zeigt, ob eine Zutate mit alten adiiert werden kann oder sollte als neues Element zum Zutaten-array hinhugefügt werden						
						for(int k=0;k<this.alteIngr.length;k++) {	
							
							
							//Falls Zutaten gleich sind
						if(this.alteIngr[k].equalsIgnoreCase(this.newIngr[i])){
							exist=true;		
							
							//Kalkulieren, falls möglich
							
							if(this.alteEinheit[k].equalsIgnoreCase(this.newEinheit[i])){														
								float calc=Float.parseFloat(this.alteMenge[k])+Float.parseFloat(this.newMenge[i]);
								//Float zum Integer, falls möglich um z.B 1.0 Stück zu vermaiden
								if((calc*100)%100==0) {									
									this.alteMenge[k]=Integer.toString((int)calc);
								}else {	
									this.alteMenge[k]=Float.toString(calc);}
							
							}
							
							else if((this.alteEinheit[k].equalsIgnoreCase("Kg"))&&(this.newEinheit[i].equalsIgnoreCase("gr"))){
								float calc=Float.parseFloat(this.alteMenge[k])+(Float.parseFloat(this.newMenge[i])/1000);
								if((calc*100)%100==0) {									
									this.alteMenge[k]=Integer.toString((int)calc);
								}else {	
									this.alteMenge[k]=Float.toString(calc);}
							
							}
							
							else if((this.alteEinheit[k].equalsIgnoreCase("gr"))&&(this.newEinheit[i].equalsIgnoreCase("Kg"))){
								float calc=(Float.parseFloat(this.alteMenge[k])/1000)+Float.parseFloat(this.newMenge[i]);
								if((calc*100)%100==0) {									
									this.alteMenge[k]=Integer.toString((int)calc);
								}else {	
									this.alteMenge[k]=Float.toString(calc);}
							
								this.alteEinheit[k]=this.newEinheit[i];
							}
							
							else if((this.alteEinheit[k].equalsIgnoreCase("kg"))&&(this.newEinheit[i].equalsIgnoreCase("liter"))){
								float calc=Float.parseFloat(this.alteMenge[k])+Float.parseFloat(this.newMenge[i]);
								if((calc*100)%100==0) {									
									this.alteMenge[k]=Integer.toString((int)calc);
								}else {	
									this.alteMenge[k]=Float.toString(calc);}
							
								
							}
							else if((this.alteEinheit[k].equalsIgnoreCase("liter"))&&(this.newEinheit[i].equalsIgnoreCase("kg"))){
								float calc=Float.parseFloat(this.alteMenge[k])+Float.parseFloat(this.newMenge[i]);
								if((calc*100)%100==0) {									
									this.alteMenge[k]=Integer.toString((int)calc);
								}else {	
									this.alteMenge[k]=Float.toString(calc);}							
								this.alteEinheit[k]=this.newEinheit[i];
								}
							
							//Kalkulation ist nicht möglich
							else {exist=false;}
							
							}
						}
						
						//Falls die Kalkulation nicht möglich ist, sollte sie Zutate als neues Element in die Liste hinzugefüht werden
						if(exist==false) {								
							String[] zusatz=alteIngr;
							this.alteIngr=new String[alteIngr.length+1];								
							for (int w=1;w<alteIngr.length;w++) {
									this.alteIngr[w]=zusatz[w-1];
								}								
							this.alteIngr[0]=this.newIngr[i];
							
							
							String[] zusatz2=alteMenge;
							this.alteMenge=new String[alteMenge.length+1];								
							for (int w=1;w<alteMenge.length;w++) {
									this.alteMenge[w]=zusatz2[w-1];
								}								
							this.alteMenge[0]=this.newMenge[i];
							
							String[] zusatz3=alteEinheit;
							this.alteEinheit=new String[alteEinheit.length+1];								
							for (int w=1;w<alteEinheit.length;w++) {
									this.alteEinheit[w]=zusatz3[w-1];
								}								
							this.alteEinheit[0]=this.newEinheit[i];
							}
						}
				}
		
		
		
		//Zusammenfassung 
		this.result= new String[alteIngr.length];		
		for (int i=0;i<alteIngr.length;i++) {
			if(this.alteMenge.length>i) {
			this.result[i]=alteIngr[i]+"   "+alteMenge[i]+" "+alteEinheit[i];}
			else {
				this.result[i]=alteIngr[i];
			}
			} 
		
		
		
	
		return result;
	}
	
	public String[] getAlteMenge() {
		return this.alteMenge;
	}
	
	public String[] getAlteEinheit() {
		return this.alteEinheit;
	}
	
	public String[] getNewIngr() {
		return this.newIngr;
	}
	
	public String[] getNewEinheit() {
		return this.newEinheit;
	}
	public String[] getAlteIngr() {
		return this.alteIngr;
	}
	
	
	public String[] getNewMenge() {
		return this.newMenge;
	}

	
	
		
	
	

}