/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.List;
import core.*;

/**
 *
 * @author ultmate
 */
public interface ParcelRepository {
    List<Parcel> findParcel(long max, int count);
}
