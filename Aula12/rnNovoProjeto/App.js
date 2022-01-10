import React from 'react';
import { View, Text, Image, ScrollView, TextInput } from 'react-native';

export default function App() {
  return (
    <ScrollView>
      <Text>
        ~{"\n\n\n"}
        Turma IGTI
      </Text>
      <View>
        <Text>Desenvedor Mobile</Text>
        <Image
          source={{
            uri: 'https://labpixel.com.br/digitalpixel/wp-content/uploads/2019/04/logo-igti-1.png',
          }}
          style={{ width: 400, height: 200}}
        />
      </View>
      <TextInput
        style={{
          height: 40,
          borderColor: 'gray',
          borderWidth: 1
        }}
        defaultValue='Insira um texto!'
      />
    </ScrollView>
  );
}