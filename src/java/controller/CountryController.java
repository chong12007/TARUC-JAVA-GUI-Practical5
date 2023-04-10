
package controller;

import da.CountriesDA;
import model.Country;


public class CountryController {

    private CountriesDA countryDA;
    
    public CountryController() {
        countryDA = new CountriesDA();
    }
    
    public void addCountry (Country country) {
        countryDA.addRecord(country);
    }
    
}
