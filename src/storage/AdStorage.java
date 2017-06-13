package storage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by makovetskyi on 21.12.2016.
 */
public class AdStorage implements Iterable<String> {

    private static AdStorage storage = new AdStorage();
    public static AdStorage getStorage() {
        return storage;
    }

    private List<String> ads = new ArrayList<>();

    public AdStorage() {
        ads.add("Test1");
        ads.add("Test 2");
        ads.add("Test 3!");
    }

    public void addad(String newAd) {
        ads.add(newAd);
    }

    @Override
    public Iterator iterator() {
        return ads.iterator();
    }
}
