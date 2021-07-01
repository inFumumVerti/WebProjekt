package beans;

////Hier sollte eine neue Zutate mit der Alteneinkaufsliste kulkuliert werden

public class Einkaufsliste {
	
	
	

	

	
	private String[] allIngr;
	
	public Einkaufsliste() {
		
	
		allIngr = new String[0];
		//allIngr[0]="";


		
		
	}
	
	public void setNew(String line) {
		
		
		String[] zusatz=allIngr;
		
		this.allIngr=new String[allIngr.length+1];
		for (int i=1;i<allIngr.length;i++) {
			this.allIngr[i]=zusatz[i-1];
		}
		this.allIngr[0]=line;
		
	
		
		
	}
	
public void setNews(String[] line) {
		
		
		String[] zusatz=allIngr;
		
		this.allIngr=new String[allIngr.length+line.length];
		
		for (int i=0;i<line.length;i++) {
			this.allIngr[i]=line[i];
		}
		for (int i=line.length;i<allIngr.length;i++) {
			this.allIngr[i]=zusatz[i-line.length];
		}
		//this.allIngr[0]=line;
		
	
		
		
	}
	


	public String[] getAllIngr() {
		return allIngr;
	}

	public void setAllIngr(String[] allIngr) {
		
		this.allIngr = allIngr;
		
	}



}
