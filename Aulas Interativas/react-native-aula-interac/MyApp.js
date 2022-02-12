import React, {Component} from "react";
import { StyleSheet, View, Button, SafeAreaView, Text, TextInput } from 'react-native';

class MyApp extends Component {

    state = {
        value1: null,
        value2: null,
        result: null
    };

    soma() {
        let calc = parseInt(this.state.value1) + parseInt(this.state.value2)
        this.setState({ result: calc.toString() })
    }

    subtracao() {
        let calc = parseInt(this.state.value1) - parseInt(this.state.value2)
        this.setState({ result: calc.toString() })
    }

    render() {
        return (
          <SafeAreaView>
            <TextInput
              style={styles.input}
              placeholder="Valor 1"
              onChangeText={(value1) => this.setState({value1})}
              keyboardType="numeric"
            />
            <TextInput
              style={styles.input}
              placeholder="Valor 2"
              onChangeText={(value2) => this.setState({value2})}
              keyboardType="numeric"
            />
            <View style={styles.view}>
            <Button
              onPress={() => this.soma()}
              title="+ Somar"
              color="#92bdca"
            />
            <Button
              onPress={() => this.subtracao()}
              title="- Subtrair"
              color="#92bdca"
            />
            </View>
            
            <Text style={styles.text}>
                {"\n"}
                {"\n"}
                Resultado: {this.state.result}
            </Text>
          </SafeAreaView>
        )
    }
  }
  export default MyApp;
  
  const styles = StyleSheet.create({
    input: {
      height: 40,
      margin: 12,
      borderWidth: 1,
      padding: 10,
    },
    view: {
        flexDirection:'row',
        alignItems:'center',
        justifyContent:'space-evenly',
        
    },
    text: {
      fontSize: 20,
      fontWeight: "bold",
      textAlign: 'center'
    }
  });