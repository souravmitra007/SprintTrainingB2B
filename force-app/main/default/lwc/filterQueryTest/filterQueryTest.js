import { LightningElement,wire,track,api } from 'lwc';

export default class FilterQueryTest extends LightningElement {

@track countryValue = '';
@track stateValue = '';

get countryOptions(){
    return [
        {label : 'America', value : 'America'},
        {label : 'Europe', value : 'Europe'},
        {label : 'Asia', value : 'Asia'}
    ];
}

get stateOptions(){
    const stateValues = [
        {label : 'California', value : 'California',country : 'America'},
        {label : 'Texas', value : 'Texas',country : 'America'},
        {label : 'New York', value : 'NewYoek',country : 'America'},
        {label : 'London', value :'London',country : 'Europe'},
        {label : 'South Korea', value : 'SouthKorea',country : 'Korea'}
    ];
    return stateValues.filter(state => state.country === this.countryValue);
}

connectedCallback(){

}

handleCountryChange(event){
    this.countryValue = event.detail.value;
    this.stateValue = ''
}

handleStateChange(event){
    this.stateValue = event.detail.value;
}


}