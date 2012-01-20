/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.beans.*;
import java.io.Serializable;

/**
 *
 * @author Ioannis
 */
public class Item implements Serializable {
    
    public static final String PROP_SAMPLE_PROPERTY = "Quantity";
    public static final String PROP_SAMPLE_PROPERTY3 = "Price";
    private Double Quantity;
    private Double Price;
    private Double Total;
    private PropertyChangeSupport propertySupport;
    
    public Item() {
        propertySupport = new PropertyChangeSupport(this);
    }
    
    public Double getQuantity() {
        return Quantity;
    }
    
    public void setQuantity(Double value) {
        Double oldValue = Quantity;
        Quantity = value;
        propertySupport.firePropertyChange(PROP_SAMPLE_PROPERTY, oldValue, Quantity);
    }
    
     public Double getPrice() {
        return Price;
    }
      public void setPrice(Double value) {
        Double oldValue2 = Price;
        Price = value;
        propertySupport.firePropertyChange(PROP_SAMPLE_PROPERTY3, oldValue2, Price);
   
    }
    
    public Double getTotal(){
        Total=getPrice()*getQuantity();
        return Total;
    }
}
