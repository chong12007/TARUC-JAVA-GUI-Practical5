
package model;


public class BMI {
    private double height;
    private double weight;
    private String category;
    private double BMI;

    public BMI(double height, double weight) {
        this.height = height;
        this.weight = weight;
        BMI = weight / (this.height * this.height);
        if(BMI < 16)
            category = "Seriously underweight";
        else if (BMI < 18)
              category = "underweight";
        else if (BMI <24)
            category = "normal";
        else if (BMI <29)
              category = "obesity";
        else
              category = "obesity class";
    }

    
    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public double getBMI() {
        return BMI;
    }

    public void setBMI(double BMI) {
        this.BMI = BMI;
    }
    
    
}
