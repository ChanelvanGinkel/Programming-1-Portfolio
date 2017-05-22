public class beer {
	public static void main(String args[]) {
		int beerNum = 99;
		String word = “bottles”;
		while(beerNum > 0) {
			if beerNum == 1; {
			word = “bottle”;
			}
		}
		System.out.println(beerNum + “ ” + word + “ of beer on the wall, “ + beerNum + “ ” + word + “ of beer.”)
		beerNum = beerNum - 1;
		if beerNum > 0 {
			System.out.println(“Take one down, pass it around “ + beerNum + “ ” + word + “ of beer on the wall.”)
		}
		if(beerNum == 0) {
			System.out.println(“No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.”)
		}
	}
}
