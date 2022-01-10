import React, {Component} from "react";
import { View, Button, Text } from "react-native";

class Pessoa extends Component {
    state = {isDev: true};

    constructor(props) {
        super(props);
        console.log("1 - construtor");
    }

    UNSAFE_componentWillMount() {
        this.setState({isDev: true});
        console.log("2 - componentWillMount")
    }

    render() {
        console.log("3 - render")
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

    componentDidMount() {
        console.log("4 - componentDidMount")
    }

    // Updates Component

    shouldComponentUpdate(nextProps, nextState) {
        console.log("5 - shouldComponentUpdate")
        return this.state.value == nextState.value;
    }

    UNSAFE_componentWillUpdate() {
        console.log("6 - componentWillUpdate")
    }

    componentDidUpdate() {
        console.log("7 - componentDidUpdate")
    }

    componentWillUnmount() {
        console.log("8 - componentWillUnmount")
    }
}
export default Pessoa;