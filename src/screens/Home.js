import React from 'react';
import {Image, StyleSheet, View, Text, TouchableOpacity} from 'react-native';

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'space-evenly',
    alignItems: 'center',
    backgroundColor: '#131432',
  },
  buttonContainer: {
    backgroundColor: '#40479E',
    padding: 15,
    borderRadius: 10,
  },
  buttonText: {
    fontSize: 25,
    color: '#FFFFFF',
  },
});

function Home({navigation}) {
  return (
    <View style={styles.container}>
      <Image
        style={{height: 100, resizeMode: 'contain'}}
        source={require('../images/passio_logo_01.webp')}
      />

      <TouchableOpacity
        onPress={() => navigation.navigate('Camera')}
        style={styles.buttonContainer}>
        <Text style={styles.buttonText}>Scan</Text>
      </TouchableOpacity>
    </View>
  );
}

export default Home;
