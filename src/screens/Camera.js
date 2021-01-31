import React from 'react';
import {StyleSheet, View, Text, SafeAreaView} from 'react-native';

import {RNCamera} from 'react-native-camera';

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  logoContainer: {
    backgroundColor: '#131432',
    paddingBottom: 30,
    paddingTop: 15,
    alignContent: 'center',
    borderTopWidth: 1,
    borderTopColor: 'lightgray',
  },
  logoText: {
    textAlign: 'center',
    color: '#fff',
    fontSize: 60,
    fontWeight: '700',
  },
});

function Home() {
  return (
    <SafeAreaView style={{flex: 1, backgroundColor: '#131432'}}>
      <View style={styles.container}>
        <RNCamera
          style={{flex: 1, alignItems: 'center'}}
          ref={(ref) => {
            this.camera = ref;
          }}
          captureAudio={false}
        />
        <View style={styles.logoContainer}>
          <Text style={styles.logoText}>Logo</Text>
        </View>
      </View>
    </SafeAreaView>
  );
}

export default Home;
