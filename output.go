package main

type Output interface {
	emit(map[string]interface{})
}

func getOutput(outputType string, config map[interface{}]interface{}) Output {
	switch outputType {
	case "Stdout":
		//t := reflect.TypeOf(StdoutOutput{})
		//pt := reflect.New(t)
		//b := pt.Interface().(Output)
		//return b
		return NewStdoutOutput(config)
	case "Elasticsearch":
		return NewElasticsearchOutput(config)
	}
	return nil
}
