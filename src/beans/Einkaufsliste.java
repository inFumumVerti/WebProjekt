package beans;

////Hier sollte eine neue Zutate mit der Alteneinkaufsliste kulkuliert werden

public class Einkaufsliste {

    private String[] allIngr;
    private String[] allMenge;
    private String[] allEinheit;


    public Einkaufsliste() {

        allIngr = new String[0];
        allMenge = new String[0];
        allEinheit = new String[0];
        }



    public void setAllNew(String[] ingr,String[] menge, String[] einheiten) {
        this.allIngr=ingr;
        this.allMenge=menge;
        this.allEinheit=einheiten;

        }




public String[] getAllIngr() {    return allIngr;}
public String[] getAllMenge() {    return allMenge;}
public String[] getAllEinheit() {return allEinheit;}



    }