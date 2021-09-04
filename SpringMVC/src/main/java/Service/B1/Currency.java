package Service.B1;

public class Currency implements CurrencyConverter {

    @Override
    public double calculate(double usd, double rate) {
        return usd*rate;
    }
}
