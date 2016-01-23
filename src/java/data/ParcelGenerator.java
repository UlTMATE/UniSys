package data;

import core.Parcel;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Component;

/**
 *
 * @author ultmate
 */

@Component
public class ParcelGenerator implements ParcelRepository {

    public List<Parcel> createParcels(int count) {
        List<Parcel> list = new ArrayList<>();
        for (int i=0; i<count; i++) {
            list.add(new Parcel(
                    new Integer(i).longValue(),
                    "Sender"+i,
                    "Rec"+i,
                    "Desc"+i,
                    new Integer(i).longValue(),
                    new Integer(i).longValue()));
        }
        return list;
    }
    @Override
    public List<Parcel> findParcel(long max, int count) {
        List<Parcel> list = createParcels(count);
        List<Parcel> temp = new ArrayList<>();
        for(Parcel parcel: list) {
            if(parcel.getId() < max) {
                temp.add(parcel);
            }
        }
        return temp;
    }

}
