package beans;



public class AlteEinkaufsliste {
	//hier wird bei jetzt erstellte Einkaufsliste gespeichert
	
	

	

	
	private String[] alteIngr;
	
	public AlteEinkaufsliste() {
		
		
		alteIngr = new String[0];
		
		
		


		
		
	}
	
	public void setNew(String ingr) {
		
		if(alteIngr.length==0) {
			this.alteIngr=new String[1];
			alteIngr[0] = ingr;
			
		}else {
		
		String[] zusatz=alteIngr;
		this.alteIngr=new String[alteIngr.length+1];
		
		for (int i=1;i<alteIngr.length;i++) {
				this.alteIngr[i]=zusatz[i-1];
				}
		
		this.alteIngr[0]=ingr;}
		

		

}
	
	public void setNews(String[] ingr) {
		
		if(alteIngr.length==0) {
			this.alteIngr=new String[ingr.length];
			for(int i=0;i<ingr.length;i++) {
				alteIngr[i]=ingr[i];
			}
			
		}else {
		
		String[] zusatz=alteIngr;
		this.alteIngr=new String[alteIngr.length+ingr.length];
		
		
		for (int i=0;i<ingr.length;i++) {
			this.alteIngr[i]=ingr[i];
			}
		for (int i=ingr.length;i<alteIngr.length;i++) {
				this.alteIngr[i]=zusatz[i-ingr.length];
				}
		
		}
		

		

}
	


	public String[] getAlteIngr() {
		return alteIngr;
	}

	public void setAlteIngr(String[] alteIngr) {
		
		this.alteIngr = alteIngr;
		
	}

}
