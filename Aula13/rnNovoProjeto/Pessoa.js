import React, {Component} from "react";
import { View, Button, Text } from "react-native";

class Pessoa extends Component {
    state = {isDev: true};
    render() {
        return (
            <View>
                <Text>{"\n\n\n"}Olá eu sou o {this.props.nome}, e eu sou
                    {this.state.isDev ? " desenvolvedor" : " professor"}
                </Text>
                <Button
                    onPress={() => {
                        this.setState({ isDev: false })
                    }}
                    disabled={!this.state.isDev}
                    title={
                        this.state.isDev ? "Clique!" : "Olá Professor!"
                    }
                />
            </View>
        )
    }
}
export default Pessoa;